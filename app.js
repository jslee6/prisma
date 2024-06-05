import * as dotenv from 'dotenv';
dotenv.config();
import express from 'express';
import { Prisma, PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();
/// 위 두줄은 프리즈마 클라이언트 쓸때 필요

const app = express();
app.use(express.json());

app.get('/users', async (req, res) => {
  const { offset = 0, limit =10, order = 'newest'}= req.query;
  let orderBy;
  switch (order){
    case 'oldest':
      orderBy = { createdAt: 'asc'};
      break;
      case 'newest':
        default:
          orderBy = {createdAt:'desc'};
  }

  const users = await prisma.user.findMany({
    orderBy,
    skip: parseInt(offset),
    take: parseInt(limit),
  });
  //유저 조회
  res.send(users);
});

app.get('/users/:id', async (req, res) => {
  const { id } = req.params;
  const user = await prisma.user.findUnique({
    where: { id: id},
  });
  // id에 해당하는 유저 조회
  res.send(user);
});

app.post('/users', async (req, res) => {
  const user = await prisma.user.create({
    data: req.body,
  })
  // 리퀘스트 바디 내용으로 유저 생성
  res.status(201).send(user);
});



app.patch('/users/:id', async (req, res) => {
  const { id } = req.params;
  const user = await prisma.user.update({
    where: {id},
    data: req.body,
  });
  // 리퀘스트 바디 내용으로 id에 해당하는 유저 수정
  res.send(user);
});

app.delete('/users/:id', async (req, res) => {
  const { id } = req.params;
  await prisma.user.delete({
    where: { id: id},
  });
  // id에 해당하는 유저 삭제
  res.sendStatus(204);
});

app.listen(process.env.PORT || 3000, () => console.log('Server Started'));

