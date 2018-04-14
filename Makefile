
GEN_SRC=Generator/Program.cs
GEN=dotnet run --project Generator/Generator.csproj

all: ImmutableUI.Forms/ImmutableUI.Forms.Generated.cs

ImmutableUI.Forms/ImmutableUI.Forms.Generated.cs: Makefile $(GEN_SRC)
	$(GEN) ImmutableUI.Forms/bindings.json $@
