#!/usr/bin/python

import argparse
import sys

def getListOfInts(in_file):
    """given a text file, return of list of data (presumed integers) from it"""
    list_of_ints=list()
    with open(in_file,'r') as reader:
        for line in reader:
            list_of_ints.append(int(line))
    return list_of_ints

if(__name__=='__main__'):

    #define input and output
    parser=argparse.ArgumentParser(description='read a file of integers, \compute the sum, and write the sum to an output file',formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument('IN_FILE',type=str,help='input file of integers')
    parser.add_argument('OUT_FILE',type=str,help='output file of sum of integers')
    args=parser.parse_args()

    if(args):
        #get the integers from the file and compute the sum
        ints=getListOfInts(args.IN_FILE)
        ints_sum=sum(ints)

        #write the sum
        with open(args.OUT_FILE,'w') as writer:
            writer.write(str(ints_sum)+"\n")

        







