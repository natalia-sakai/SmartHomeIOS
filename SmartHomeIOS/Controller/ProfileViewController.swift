//
//  ProfileViewController.swift
//  SmartHomeIOS
//
//  Created by Natalia Sakai on 18/02/22.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController, UIContextMenuInteractionDelegate {
    func contextMenuInteraction(_ interaction: UIContextMenuInteraction, configurationForMenuAtLocation location: CGPoint) -> UIContextMenuConfiguration? {
        let edit = UIAction(title: "Edit",
          image: UIImage(systemName: "edit.fill")) { action in
          // Perform action
        }
        let share = UIAction(title: "Share",
          image: UIImage(systemName: "square.and.arrow.up.fill")) { action in
          // Perform action
        }
        let delete = UIAction(title: "Delete",
          image: UIImage(systemName: "trash.fill"),
          attributes: [.destructive]) { action in
          // Perform action
        }
        
        return UIContextMenuConfiguration(identifier: nil,
            previewProvider: nil) { _ in
            UIMenu(title: "Actions", children: [edit, share, delete])
          }
    }
    
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardView.layer.cornerRadius = 25
        profileImage.layer.cornerRadius = 55
        
        let interaction = UIContextMenuInteraction(delegate: self)
        profileImage.addInteraction(interaction)
        
        _ = UIContextMenuConfiguration(
          identifier: "MyIdentifier" as NSCopying,
          previewProvider: {
            print("primeiro")
            return nil
          },
          actionProvider: { suggestedActions in
              print("segundo")
            return nil
        })
    }
}
