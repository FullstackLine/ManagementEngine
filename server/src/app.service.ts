import { Injectable } from '@nestjs/common';
import { Prisma } from '@prisma/client';
import { PrismaService } from './prisma.service';


@Injectable()
export class AppService {
  constructor(private prisma: PrismaService){}

  async getHello(id: number){
    //return 1;
    const r = this.prisma.systemUser.findMany();
    console.log(r);
    return r;

  }
}
