import { Test, TestingModule } from '@nestjs/testing';
import { SystemUserService } from './system-user.service';

describe('SystemUserService', () => {
  let service: SystemUserService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [SystemUserService],
    }).compile();

    service = module.get<SystemUserService>(SystemUserService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
