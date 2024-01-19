import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { PrismaService } from './prisma.service';
import {I18nModule} from 'nestjs-i18n';
import * as path from 'path';


console.log(path.join(__dirname, '/i18n/'))
@Module({
  imports: [I18nModule.forRoot({
    fallbackLanguage: 'en',
    loaderOptions: {
      path: path.join(__dirname, '/i18n/'),
      watch: true,
    },
  })],
  controllers: [AppController],
  providers: [AppService, PrismaService],
})
export class AppModule {}
