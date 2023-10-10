import { Injectable } from '@nestjs/common';
import { CreateQuestaoDto } from './dto/create-questao.dto';
import { UpdateQuestaoDto } from './dto/update-questao.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class QuestaoService {

  constructor(private prisma: PrismaService){
    
  }
  create(createQuestaoDto: CreateQuestaoDto) {
    return 'This action adds a new questao';
  }

  findAll() {
    return `This action returns all questao`;
  }

  findOne(id: number) {
    return `This action returns a #${id} questao`;
  }

  update(id: number, updateQuestaoDto: UpdateQuestaoDto) {
    return `This action updates a #${id} questao`;
  }

  remove(id: number) {
    return `This action removes a #${id} questao`;
  }
}
