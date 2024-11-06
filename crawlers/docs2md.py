#!/usr/bin/env python3

# docs2md.py
# Convert API documentation to markdown

from crawl4ai import WebCrawler

# Initialize the crawler
crawler = WebCrawler()
crawler.warmup()

# URL of the documentation to convert read in from the command line
url = input("Enter the URL of the documentation to convert: ")

# Execute the crawl
result = crawler.run(
    url=url,
    word_count_threshold=10,  # Minimum words per block
    bypass_cache=True
)

# Get markdown output
markdown_content = result.markdown

name = input("Enter the name of the output file: ") 

# Save to file
with open(name + '.md', 'w', encoding='utf-8') as f:
    f.write(markdown_content)
