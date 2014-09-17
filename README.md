ngEhPopupImage
===================================

The ad slider is like gif feature.

## Install

```bash
bower install ng-eh-ad-slider
```

## Install node modules

```bash
npm install
```

## Dependencies

* angular

## Support

* IE8+
* chrome
* firefox

## Usage

#### html
```html
<div style="width:250px;" time="time" ng-eh-ad-slider data="ads" target="_blank"></div>
```

#### js
```js
$scope.ads = [{
  photo:"2670594645_c521fd3dbd_n.jpg",
  url:"https://www.flickr.com/photos/tobbymailbox/2670594645/in/photolist-54ZuYD-54ZuKg-hK9MhM-4utGZs-hKahe5"
},{
  photo:"sunset_chimneysP9166348.jpg",
  url:"https://www.flickr.com/photos/hysaint/2291338108/in/photolist-54ZuYD-54ZuKg-hK9MhM-4utGZs-hKahe5/"
}];
$scope.time = 3000
```

## DEMO

```bash
gulp server
```

## Build

```bash
gulp
```

