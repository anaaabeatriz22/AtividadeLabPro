import { Module } from '@nestjs/common';
import { ProfessorService } from './professor.service';
import { ProfessorController } from './professor.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  controllers: [ProfessorController],
  providers: [ProfessorService],
  imports: [PrismaService]
})
export class ProfessorModule {}
