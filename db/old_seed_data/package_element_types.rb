element_types = [
	"Bag",
	"Closure",
	"Box",
	"Carton",
	"Label",
	"Block"
]

element_types.each do |name|
	PackageElementType.create(name: name)
end