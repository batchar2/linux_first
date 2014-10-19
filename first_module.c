#include <linux/init.h>
#include <linux/module.h>



/*
 * This function is called when this module is loaded.
 */
static int __init first_module_init(void)
{
	printk(KERN_INFO "==== Module Init ====");
	return 0;
}

/*
 * This function is called when this driver is unloaded.
 */
static void __exit first_module_exit(void)
{
	printk(KERN_INFO "==== Module Exit ====");
}

module_init(first_module_init);
module_exit(first_module_exit);


MODULE_AUTHOR("Skokov Stanislav <skokov1992@main.ru>");
MODULE_DESCRIPTION("First");
MODULE_LICENSE("GPL v2");
