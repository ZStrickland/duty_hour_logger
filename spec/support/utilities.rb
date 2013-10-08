def full_title(page_title)
	base_title = "Duty Hour Logger"
	if page_title.empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end
end
