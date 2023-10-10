import { ApiProperty } from '@nestjs/swagger';

export class CreateTesteDto {
    @ApiProperty()
    pontuacao:          any
  
    @ApiProperty()
    id:                any

   @ApiProperty()
   inicio  : any

   @ApiProperty()
   fim   : any

}
