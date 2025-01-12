import { Injectable, NotFoundException } from '@nestjs/common';
import { userData } from '../../mocks/userData';
import { findUserDTO, UserDTO } from 'src/dto/userDTO';

@Injectable()
export class UserService {
    
        
    
    getAllUser(param: findUserDTO){
        if (param && param.name){
            const user =  userData.filter(user => String(user.name).toLowerCase() === String(param.name).toLowerCase());
            if (user.length == 0){
                return new NotFoundException('User not found')
            }
            return user;
        }
        return userData;
    }

    getUserById(id: number){
        const user = userData.find(u => u.userId == id)
        console.log('user', user)
        return user
    }

    createUser(body: UserDTO){
        const payload: UserDTO = {
            userId: Math.random(),
            ...body
        }

        userData.push(payload);
        return userData;
    }

    updateUser(id: number, body: UserDTO){
        const isUserExist = userData.findIndex(user => user.userId == id)
        if(isUserExist == -1){
            return new NotFoundException('User not found')
        }
        userData[isUserExist] = {
            ...userData[isUserExist],
            ...body    
        };

        return userData[isUserExist];
    }

    deleteUser(id: number){
        const isUserExist = userData.findIndex(user => user.userId == id)
        if(isUserExist == -1){
            return new NotFoundException('User not found')
        }
        userData.splice(isUserExist, 1);
        return true;
    }

}
