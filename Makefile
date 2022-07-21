.PHONY: clean

clean:
	find . -name "*.md" ! -name "README.md" -type f -exec rm {} \;
