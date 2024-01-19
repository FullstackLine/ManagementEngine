import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { SystemUserService } from './system-user.service';
import { CreateSystemUserDto } from './dto/create-system-user.dto';
import { UpdateSystemUserDto } from './dto/update-system-user.dto';

@Controller('system-user')
export class SystemUserController {
  constructor(private readonly systemUserService: SystemUserService) {}

  @Post()
  create(@Body() createSystemUserDto: CreateSystemUserDto) {
    return this.systemUserService.create(createSystemUserDto);
  }

  @Get()
  findAll() {
    return this.systemUserService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.systemUserService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateSystemUserDto: UpdateSystemUserDto) {
    return this.systemUserService.update(+id, updateSystemUserDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.systemUserService.remove(+id);
  }
}
