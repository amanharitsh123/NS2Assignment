BEGIN{
count=0
}
{
	if($1 == "d" && $5=="tcp")
	{
		printf("Packet %d is dropped at node %s at time %f\n",$6,$3,$2)
		count++
	}
}
END{
	printf("Total packets dropped are %d:",count)
}
