

ENTRY(_start)

		SECTIONS
{
		/* Starts at LOADER_ADDR. */
		. = 0x8000;
		__start = .;
		__text_start = .;
		.text :
		{
				KEEP(*(.text.boot))
						*(.text)
		}
		. = ALIGN(4096); /* align to page size */
		__text_end = .;
		__end = .;
}
