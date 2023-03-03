SELECT s.stdName, s.addr, c.clubName, c.roomNo
  FROM stdtbl AS s
  JOIN stdclubtbl AS j
    ON s.stdName = j.stdName
  JOIN clubtbl AS c
    ON j.clubName = c.clubName;