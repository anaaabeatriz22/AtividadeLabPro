import { Module } from '@nestjs/common';
import { QuestaoService } from './questao.service';
import { QuestaoController } from './questao.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  controllers: [QuestaoController],
  providers: [QuestaoService],
  imports: [PrismaService]
})
export class QuestaoModule {}
