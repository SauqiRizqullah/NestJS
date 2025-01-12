import {IsOptional, IsString, IsInt, IsNotEmpty}from 'class-validator';

export class findUserDTO{
    @IsOptional()
    @IsString()
    name: string;
}

export class UserDTO{
    @IsOptional()
    @IsInt()
    userId: number;
    
    @IsNotEmpty()
    @IsString()
    name: string;

    @IsNotEmpty()
    @IsString()
    username: string;

    @IsNotEmpty()
    @IsString()
    password: string;
}