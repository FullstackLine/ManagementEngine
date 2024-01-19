import { Test, TestingModule } from '@nestjs/testing';
import { SystemUserController } from './system-user.controller';
import { SystemUserService } from './system-user.service';
import { APIAnswer } from 'src/types';

describe('SystemUserController', () => {
  let controller: SystemUserController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [SystemUserController],
      providers: [SystemUserService],
    }).compile();

    controller = module.get<SystemUserController>(SystemUserController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('These methods should be defined', ()=>{


    it('create should be defined', ()=>{
      expect(controller.create).toBeDefined();
    })
    
    it('findAll should be defined', ()=>{
      expect(controller.findAll).toBeDefined();
    })

    it('findOne should be defined', ()=>{
      expect(controller.findOne).toBeDefined();
    })

    it('update should be defined', ()=>{
      expect(controller.update).toBeDefined();
    })

    it('remove should be defined', ()=>{
      expect(controller.remove).toBeDefined();
    })

    it('auth should be defined', ()=>{
      expect(controller.remove).toBeDefined();
    })

  })

  describe('These methods should return an object of APIAnswer type.', ()=>{

    it('create should be of type APIAnswer', ()=>{
      const answer : APIAnswer = controller.create({});
      
    })
    
    it('findAll should be of type APIAnswer', ()=>{
      const answer : APIAnswer = controller.findAll();
      
    })

    it('findOne should be of type APIAnswer', ()=>{
      const answer : APIAnswer = controller.findOne('1');
      
    })

    it('update should be of type APIAnswer', ()=>{
      const answer : APIAnswer = controller.update('1', {});
      
    })

    it('remove should be of type APIAnswer', ()=>{
      const answer : APIAnswer = controller.remove('1');
      
    })

    it('auth should be of type APIAnswer', ()=>{
      const answer : APIAnswer = controller.auth();
      
    })


  })

});
