import { Test, TestingModule } from '@nestjs/testing';
import { PrismaService } from './prisma.service';
import { mockDeep, DeepMockProxy } from 'jest-mock-extended';
import { PrismaClient } from '@prisma/client';


describe('PrismaService', () => {
  let prisma:  DeepMockProxy<PrismaClient>; 

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [PrismaService],
    })
    .overrideProvider(PrismaService)
    .useValue(mockDeep<PrismaClient>)
    .compile();

    prisma = module.get(PrismaService);
  });

  it('returns users', () => {
    const testUsers : any[] = [];

    //prisma.systemUser.findMany.mockResolvedValueOnce(testUsers);

  });

});
