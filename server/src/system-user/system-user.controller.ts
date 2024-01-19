import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { SystemUserService } from './system-user.service';
import { CreateSystemUserDto } from './dto/create-system-user.dto';
import { UpdateSystemUserDto } from './dto/update-system-user.dto';
import { APIAnswer } from 'src/types';

@Controller('system-user')
export class SystemUserController {
  constructor(private readonly systemUserService: SystemUserService) {}

  @Post()
  create(@Body() createSystemUserDto: CreateSystemUserDto) : APIAnswer {
    const answer = {success: false, description: "", data: []};
    return answer;
  }

  @Get()
  findAll() : APIAnswer  {
    const answer = {success: false, description: "", data: []};
    return answer;
  }

  @Get(':id')
  findOne(@Param('id') id: string) : APIAnswer  {
    const answer = {success: false, description: "", data: []};
    return answer;
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateSystemUserDto: UpdateSystemUserDto) : APIAnswer  {
    const answer = {success: false, description: "", data: []};
    return answer;
  }

  @Delete(':id')
  remove(@Param('id') id: string) : APIAnswer  {
    const answer = {success: false, description: "", data: []};
    return answer;
  }

  @Post()
  auth() : APIAnswer  {
    const answer = {success: false, description: "", data: []};
    return answer;
  }

}
