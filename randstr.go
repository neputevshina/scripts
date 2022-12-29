package main

import (
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"time"
)

func main() {
	rand.Seed(time.Now().UnixNano())
	alph := []rune("ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ")
	n, err := strconv.Atoi(string(os.Args[1]))
	if err != nil {
		panic(err)
	}
	for ; n > 0; n-- {
		fmt.Printf("%c", alph[rand.Intn(len(alph))])
	}
}
