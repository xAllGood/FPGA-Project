with open("image.mem","w") as file:
    for i in range(82):
        if (i<10):
            a = i
            file.write(f"0{a}\n")
        else:
            a = i
            file.write(f"{a}\n")
