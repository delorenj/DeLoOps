Crawl4AI Documentation

  * Home 
  * Installation 
  * Quick Start 
  * Search 



  * Installation
  * Quick Start
  * Basic 
    * Simple Crawling
    * Output Formats
    * Browser Configuration
    * Page Interaction
    * Content Selection
  * Advanced 
    * Content Processing
    * Magic Mode
    * Hooks & Auth
    * Proxy & Security
    * Session Management
    * Session Management (Advanced)
  * Extraction 
    * Overview
    * LLM Strategy
    * Json-CSS Extractor Basic
    * Json-CSS Extractor Advanced
    * Cosine Strategy
    * Chunking
  * API Reference 
    * AsyncWebCrawler
    * AsyncWebCrawler.arun()
    * CrawlResult
    * Strategies
  * Tutorial 
    * 1. Getting Started
    * 2. Advanced Features
    * 3. Browser Setup
    * 4. Proxy Settings
    * 5. Dynamic Content
    * 6. Magic Mode
    * 7. Content Cleaning
    * 8. Media Handling
    * 9. Link Analysis
    * 10. User Simulation
    * 11.1. JSON CSS
    * 11.2. LLM Strategy
    * 11.3. Cosine Strategy
    * 12. Session Crawling
    * 13. Text Chunking
    * 14. Custom Workflows



  * Crawl4AI
  * Introduction
  * Quick Start
  * Key Features ✨
  * Documentation Structure
  * Getting Started
  * Support



# Crawl4AI

Welcome to the official documentation for Crawl4AI! 🕷️🤖 Crawl4AI is an open-source Python library designed to simplify web crawling and extract useful information from web pages. This documentation will guide you through the features, usage, and customization of Crawl4AI.

## Introduction

Crawl4AI has one clear task: to make crawling and data extraction from web pages easy and efficient, especially for large language models (LLMs) and AI applications. Whether you are using it as a REST API or a Python library, Crawl4AI offers a robust and flexible solution with full asynchronous support.

## Quick Start

Here\'s a quick example to show you how easy it is to use Crawl4AI with its asynchronous capabilities:

```

    
    
    import asyncio
    from crawl4ai import AsyncWebCrawler
    async def main():
      # Create an instance of AsyncWebCrawler
      async with AsyncWebCrawler(verbose=True) as crawler:
        # Run the crawler on a URL
        result = await crawler.arun(url=\"https://www.nbcnews.com/business\")
        # Print the extracted content
        print(result.markdown)
    # Run the async main function
    asyncio.run(main())
    
```

## Key Features ✨

  * 🆓 Completely free and open-source
  * 🚀 Blazing fast performance, outperforming many paid services
  * 🤖 LLM-friendly output formats (JSON, cleaned HTML, markdown)
  * 📄 Fit markdown generation for extracting main article content.
  * 🌐 Multi-browser support (Chromium, Firefox, WebKit)
  * 🌍 Supports crawling multiple URLs simultaneously
  * 🎨 Extracts and returns all media tags (Images, Audio, and Video)
  * 🔗 Extracts all external and internal links
  * 📚 Extracts metadata from the page
  * 🔄 Custom hooks for authentication, headers, and page modifications
  * 🕵️ User-agent customization
  * 🖼️ Takes screenshots of pages with enhanced error handling
  * 📜 Executes multiple custom JavaScripts before crawling
  * 📊 Generates structured output without LLM using JsonCssExtractionStrategy
  * 📚 Various chunking strategies: topic-based, regex, sentence, and more
  * 🧠 Advanced extraction strategies: cosine clustering, LLM, and more
  * 🎯 CSS selector support for precise data extraction
  * 📝 Passes instructions/keywords to refine extraction
  * 🔒 Proxy support with authentication for enhanced access
  * 🔄 Session management for complex multi-page crawling
  * 🌐 Asynchronous architecture for improved performance
  * 🖼️ Improved image processing with lazy-loading detection
  * 🕰️ Enhanced handling of delayed content loading
  * 🔑 Custom headers support for LLM interactions
  * 🖼️ iframe content extraction for comprehensive analysis
  * ⏱️ Flexible timeout and delayed content retrieval options



## Documentation Structure

Our documentation is organized into several sections:

### Basic Usage

  * Installation
  * Quick Start
  * Simple Crawling
  * Browser Configuration
  * Content Selection
  * Output Formats
  * Page Interaction



### Advanced Features

  * Magic Mode
  * Session Management
  * Hooks & Authentication
  * Proxy & Security
  * Content Processing



### Extraction & Processing

  * Extraction Strategies Overview
  * LLM Integration
  * CSS-Based Extraction
  * Cosine Strategy
  * Chunking Strategies



### API Reference

  * AsyncWebCrawler
  * CrawlResult
  * Extraction Strategies
  * arun() Method Parameters



### Examples

  * Coming soon!



## Getting Started

  1. Install Crawl4AI: 

  2. Check out our Quick Start Guide to begin crawling web pages.

  3. Explore our examples to see Crawl4AI in action.




## Support

For questions, suggestions, or issues: - GitHub Issues: Report a Bug - Twitter: @unclecode - Website: crawl4ai.com

Happy Crawling! 🕸️🚀

Site built with MkDocs and Terminal for MkDocs. 

##### Search

Type to start searching
