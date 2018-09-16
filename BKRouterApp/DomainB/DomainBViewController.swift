//
//  DomainBViewController.swift
//  DomainB
//
//  Created by burt on 2018. 3. 9..
//  Copyright © 2018년 skyfe79. All rights reserved.
//

import UIKit
import BKRouter

public class DomainBViewController: UIViewController {


    @IBOutlet weak var titleLabel: UILabel!

    private let viewModel: DomainBViewModel

    public init(viewModel: DomainBViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DomainBViewController", bundle: Bundle(for: DomainBViewController.self))
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError()
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = viewModel.title
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func clickedNextButton(_ sender: Any) {
        let items = [
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
            "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
            "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,",
            "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        ]

        Router.shared.push(from: self, to: "myapp://domainA", userData: ["items": items])
    }

}
