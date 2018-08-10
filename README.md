# Swipe delete row UITableCell in Swift

Example UITableCell swipe delete

## Method

use method in `UITableViewDataSource` for swipe row
### Method First

```swift
func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete{
        self.data.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
}
```

### OR

### Other Method

```swift
func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
    let delete = UITableViewRowAction(style: .destructive, title: "Delete", handler: { (rowAction, indexPath) in
        self.data.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
    })

    return [delete]
}
```