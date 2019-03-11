var express = require('express');
var userModel = require.main.require('./model/user_model');
var reportModel = require.main.require('./model/report_model');
var categoryModel = require.main.require('./model/category_model');
var router = express.Router();

router.get('/',function(req,res){
    reportModel.getBreaking(function(breakingNews){
        reportModel.getInternational(function(internationalNews){
            categoryModel.getAll(function(results){
                reportModel.getFeatured(function(featured){
	
                    var data = {
                        breaking : breakingNews,
                        international : internationalNews,
                        featured : featured,
                        categoryList : results
                    };
                    console.log(data.categoryList)
                    res.render('website/index',data);
                });   
            })
        })
    });
                // categoryModel.getAll(function(results){
                //     reportModel.getFeatured(function(featuredNews){
                //         var data = {
                //             featured : featuredNews,
                //             categoryList : results
                //         };
                //         console.log(data.categoryList)
                //         res.render('website/index',data);
                //     })
                // });   
            
    
});

// router.get('/:title',function(req,res){
//     reportModel.getBreaking(function(breakingNews){
//         reportModel.getInternational(function(internationalNews){
//             categoryModel.getAll(function(results){
//                 reportModel.getFeatured(function(featured){
	
//                     var data = {
//                         title : req.params.title,
//                         international : internationalNews,
//                         featured : featured,
//                         categoryList : results
//                     };
//                     console.log(data.categoryList)
//                     res.render('website/index',data);
//                 });   
//             })
//         })
//     });

// });

module.exports = router;