.PHONY: task1 task2 test clean py bash node ps

task1:
	@echo "Running Task 1..."
	@python task_01.py 2>/dev/null || bash task_01.sh 2>/dev/null || npm run task:01 2>/dev/null || pwsh -c "Import-Module .\TwoTask\TwoTask.psd1; Task01" 2>/dev/null

task2:
	@echo "Running Task 2 ($(EXT))..."
	@python task_02.py $(EXT) 2>/dev/null || bash task_02.sh $(EXT) 2>/dev/null || npm run task:02 $(EXT) 2>/dev/null || pwsh -c "Import-Module .\TwoTask\TwoTask.psd1; Task02 -Laiend '$(EXT)'" 2>/dev/null

test: task1
	@make task2 EXT=txt

clean:
	@rm -f random.txt
