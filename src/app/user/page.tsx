// import React, { useEffect } from "react";

require("dotenv").config();

export default async function getAllUsers() {
  const res = await fetch(
    "postgresql://postgres:postgres@localhost:5432/personal?schema=public"
  );
  const users = await res.json();
  return users.map((user: { id: any; username: any }) => {
    return { params: { id: user.id, username: user.username } };
  });
}
