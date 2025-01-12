import { Controller, Get, Param, ParseIntPipe, Query, Post, Body, Put, Delete } from '@nestjs/common';
import { UserService } from '../../../services/user/user.service';
import { findUserDTO, UserDTO } from 'src/dto/userDTO';
@Controller('master/user')
export class UserController {
    constructor(
        private userService: UserService

    ){}

    @Get()
    GetAllUser(
        @Query() filter: findUserDTO
    ){
        return this.userService.getAllUser(filter);
    }

    @Get(':id')
    GetUserById(
        @Param('id', ParseIntPipe) id: number
    ){
        console.log('id', id)
        return this.userService.getUserById(id);
    }

    @Post('/create')
    CreateUser(
        @Body() bodyParam: UserDTO
    ){
        return this.userService.createUser(bodyParam);
    }

    @Put('/:id/update')
    UpdateUser(
        @Param('id', ParseIntPipe) id: number,
        @Body() bodyParam: UserDTO
    ){
        return this.userService.updateUser(id, bodyParam);
    }

    @Delete('/:id/delete')
    DeleteUser(
        @Param('id', ParseIntPipe) id: number
    ){
        return this.userService.deleteUser(id);
    }
}


// http://localhost:3000/user