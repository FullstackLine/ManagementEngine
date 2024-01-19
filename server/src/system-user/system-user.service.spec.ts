import { Test, TestingModule } from '@nestjs/testing';
import { SystemUserService } from './system-user.service';
import { APIAnswer } from '../types';


describe('SystemUserService', () => {
  let service: SystemUserService;
  

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [SystemUserService],
    }).compile();

    service = module.get<SystemUserService>(SystemUserService);
    

  });

  describe('should be defined', ()=>{
    it('service should be defined', () => {
      expect(service).toBeDefined();
    });
    it('service.create should be defined', () => {
      expect(service.create).toBeDefined();
    });
    it('service.findAll should be defined', () => {
      expect(service.findAll).toBeDefined();
    });
    it('service.findOne should be defined', () => {
      expect(service.findOne).toBeDefined();
    });
    it('service.update should be defined', () => {
      expect(service.update).toBeDefined();
    });
    it('service.remove should be defined', () => {
      expect(service.remove).toBeDefined();
    });
  })

  describe('findOne', ()=>{
    it('should return a string', ()=>{
      const result = "";
      jest.spyOn(service, 'findOne').mockImplementation(()=>result);
    })
  });
  
});
