
import UIKit
import SnapKit

class LevelsViewController: BaseViewController {

  private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    private let cellIdentifier = "CustomCollectionViewCell"
    private let numOfCells = 30
    private let topLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        topLabel.theTitle(text: "Levels")

        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
       
        layout.sectionInset = UIEdgeInsets(top: 100, left: 30, bottom: 10, right: 10)
        collectionView.collectionViewLayout = layout
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(LevelsViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        collectionView.backgroundColor = .clear
        collectionView.frame = view.bounds
        view.addSubview(collectionView)
        view.addSubview(topLabel)
        
        setConstraints()
    }
}

extension LevelsViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numOfCells
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! LevelsViewCell
        
        
        
        return cell
    }
    
}

extension LevelsViewController:UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Touch\(indexPath.row)")
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (collectionView.bounds.width - 100) / 3 // The width of each cell with an indent
        let cellHeight: CGFloat = 100
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
}

extension LevelsViewController {
    private func setConstraints() {
        topLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.centerX.equalToSuperview()
        
        }
    }
}
