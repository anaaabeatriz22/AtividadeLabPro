import { Injectable } from '@nestjs/common';
import { CreateDisciplinaDto } from './dto/create-disciplina.dto';
import { UpdateDisciplinaDto } from './dto/update-disciplina.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class DisciplinaService {

  constructor(private prisma: PrismaService){
    
  }
  create(createDisciplinaDto: CreateDisciplinaDto) {
    return 'This action adds a new disciplina';
  }

  findAll() {
    return `This action returns all disciplina`;
  }

  findOne(id: number) {
    return `This action returns a #${id} disciplina`;
  }

  update(id: number, updateDisciplinaDto: UpdateDisciplinaDto) {
    return `This action updates a #${id} disciplina`;
  }

  remove(id: number) {
    return `This action removes a #${id} disciplina`;
  }
}
