element_types = [
	"Bag",
	"Closure",
	"Box",
	"Carton"
]

element_types.each do |name|
	PackageElementType.create(name: name)
end