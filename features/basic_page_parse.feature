Feature: Basic parse

	Scenario: Simple page retrieval and parse
		Given I get any image page
		Then I should see "Image Properties"
		And I should see "main.php?g2_view=core.DownloadItem&amp;g2_itemId=142392&amp;g2_serialNumber=2"