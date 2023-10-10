import { Module } from '@nestjs/common';
import { AssuntoService } from './assunto.service';
import { AssuntoController } from './assunto.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  controllers: [AssuntoController],
  providers: [AssuntoService],
  imports: [PrismaService]
})
export class AssuntoModule {}
