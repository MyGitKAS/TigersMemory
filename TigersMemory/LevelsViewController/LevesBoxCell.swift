import UIKit

class CustomTableViewCell: UITableViewCell {

    let greenViewWidth: CGFloat = (UIScreen.main.bounds.width - 60) / 3 // Ширина каждой зеленой view с учетом отступов
    let greenViewHeight: CGFloat = 50 // Высота зеленой view
    let spacing: CGFloat = 20 // Отступ между view

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        // Создаем и настраиваем первую зеленую view
        let greenView1 = UIView()
        greenView1.translatesAutoresizingMaskIntoConstraints = false
        greenView1.backgroundColor = .green

        // Создаем и настраиваем вторую зеленую view
        let greenView2 = UIView()
        greenView2.translatesAutoresizingMaskIntoConstraints = false
        greenView2.backgroundColor = .green

        // Создаем и настраиваем третью зеленую view
        let greenView3 = UIView()
        greenView3.translatesAutoresizingMaskIntoConstraints = false
        greenView3.backgroundColor = .green

        // Добавляем зеленые view в ячейку
        contentView.addSubview(greenView1)
        contentView.addSubview(greenView2)
        contentView.addSubview(greenView3)

        // Определяем constraints для зеленых view

        NSLayoutConstraint.activate([
            // Зеленая view 1
            greenView1.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            greenView1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            greenView1.widthAnchor.constraint(equalToConstant: greenViewWidth),
            greenView1.heightAnchor.constraint(equalToConstant: greenViewHeight),

            // Зеленая view 2
            greenView2.leadingAnchor.constraint(equalTo: greenView1.trailingAnchor, constant: spacing),
            greenView2.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            greenView2.widthAnchor.constraint(equalToConstant: greenViewWidth),
            greenView2.heightAnchor.constraint(equalToConstant: greenViewHeight),

            // Зеленая view 3
            greenView3.leadingAnchor.constraint(equalTo: greenView2.trailingAnchor, constant: spacing),
            greenView3.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            greenView3.widthAnchor.constraint(equalToConstant: greenViewWidth),
            greenView3.heightAnchor.constraint(equalToConstant: greenViewHeight),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
