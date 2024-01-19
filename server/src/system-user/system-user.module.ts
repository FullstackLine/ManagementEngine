import { Module } from '@nestjs/common';
import { SystemUserService } from './system-user.service';
import { SystemUserController } from './system-user.controller';

@Module({
  controllers: [SystemUserController],
  providers: [SystemUserService],
})
export class SystemUserModule {}
