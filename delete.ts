import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

async function deleteMany() {
    let result = await prisma.user.deleteMany({
        where: {
            name: '가진석', // 이 조건에 맞는 모든 레코드를 삭제합니다. (유니크만 삭제가능하며, 네임 유니크줌)
        },
    });
    console.log(result);
}

async function deleteId() {
    let result = await prisma.user.deleteMany({
        where: {
            id: 2, // ID값으로삭제함. 
        },
    });
    console.log(result);
}


deleteMany();
deleteId();
