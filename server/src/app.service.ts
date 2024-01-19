import { Injectable } from '@nestjs/common';
import { Prisma } from '@prisma/client';
import { PrismaService } from './prisma.service';


@Injectable()
export class AppService {
  constructor(private prisma: PrismaService){}

  async getHello() {
    return await this.prisma.systemUser.findUnique({
      where: {
        id: 1
      }
    })
  }
}
