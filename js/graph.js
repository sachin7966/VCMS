
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	theme: "light2",
	title:{
		text: "Quiz Tracking Report"
	},
	data: [{        
		type: "line",
      	indexLabelFontSize: 16,
		dataPoints: [
			{ y: 30},
			{ y: 10 , indexLabel: "\u2193 lowest",markerColor: "DarkSlateGrey", markerType: "cross"},  
			{ y: 50,},
			{ y: 70},
			{ y: 90},
			{ y: 110 },
			{ y: 200 , indexLabel: "\u2191 highest",markerColor: "red", markerType: "triangle"},
			{ y: 150 },
			{ y: 160 },
			{ y: 160 },
			{ y: 170 },
			{ y: 180 }
		]
	}]
});
chart.render();

}
