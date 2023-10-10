import { Module } from '@nestjs/common';
import { TesteService } from './teste.service';
import { TesteController } from './teste.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  controllers: [TesteController],
  providers: [TesteService],
  imports: [PrismaService]
})
export class TesteModule {}
