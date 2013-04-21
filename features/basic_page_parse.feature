Feature: Basic parse

	Scenario: Simple page retrieval and parse
		Given I get any image page
		Then I should see "Image Properties"
		And I should see "http://images.earthkam.ucsd.edu/main.php?g2_view=core.DownloadItem&g2_itemId=142392&g2_serialNumber=2"
