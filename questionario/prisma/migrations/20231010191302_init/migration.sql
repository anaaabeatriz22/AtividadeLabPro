-- CreateEnum
CREATE TYPE "Dificuldade" AS ENUM ('FACIL', 'MEDIO', 'DIFICIL');

-- CreateTable
CREATE TABLE "professor" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,

    CONSTRAINT "professor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "aluno" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,

    CONSTRAINT "aluno_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "questao" (
    "id" SERIAL NOT NULL,
    "enunciado" TEXT NOT NULL,
    "gabarito" BOOLEAN NOT NULL,
    "dificuldade" "Dificuldade" NOT NULL,
    "data_cadastro" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "professor_id" INTEGER NOT NULL,
    "assunto_id" INTEGER NOT NULL,

    CONSTRAINT "questao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "assunto" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "disciplina_id" INTEGER NOT NULL,

    CONSTRAINT "assunto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "teste" (
    "id" SERIAL NOT NULL,
    "inicio" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "fim" TIMESTAMP(3) NOT NULL,
    "quantidade_questoes" INTEGER,
    "pontuacao" INTEGER,
    "aluno_id" INTEGER,
    "assunto_id" INTEGER,

    CONSTRAINT "teste_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "disciplina" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,

    CONSTRAINT "disciplina_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_DisciplinaToProfessor" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_DisciplinaToProfessor_AB_unique" ON "_DisciplinaToProfessor"("A", "B");

-- CreateIndex
CREATE INDEX "_DisciplinaToProfessor_B_index" ON "_DisciplinaToProfessor"("B");

-- AddForeignKey
ALTER TABLE "questao" ADD CONSTRAINT "questao_professor_id_fkey" FOREIGN KEY ("professor_id") REFERENCES "professor"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "questao" ADD CONSTRAINT "questao_assunto_id_fkey" FOREIGN KEY ("assunto_id") REFERENCES "assunto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "assunto" ADD CONSTRAINT "assunto_disciplina_id_fkey" FOREIGN KEY ("disciplina_id") REFERENCES "disciplina"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "teste" ADD CONSTRAINT "teste_aluno_id_fkey" FOREIGN KEY ("aluno_id") REFERENCES "aluno"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "teste" ADD CONSTRAINT "teste_assunto_id_fkey" FOREIGN KEY ("assunto_id") REFERENCES "assunto"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DisciplinaToProfessor" ADD CONSTRAINT "_DisciplinaToProfessor_A_fkey" FOREIGN KEY ("A") REFERENCES "disciplina"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DisciplinaToProfessor" ADD CONSTRAINT "_DisciplinaToProfessor_B_fkey" FOREIGN KEY ("B") REFERENCES "professor"("id") ON DELETE CASCADE ON UPDATE CASCADE;
