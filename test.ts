import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

async function create() {
let result =await prisma.usertest.createMany({
    data: {
        name: '이진석3',
        age: 1234,
        number: '01027796579',
    },
})
console.log(result);
}


