// Importing necessary modules and resources
import { LightningElement} from 'lwc';
import marriageInvitationAssets from '@salesforce/resourceUrl/marriageInvitationAssets';

export default class InvitationBanner extends LightningElement {
    // Public properties to be exposed in the Lightning App Builder
    theme = 'theme1'

    // Paths to the static resources
    instagram = marriageInvitationAssets + '/instagram.svg';
    twitter = marriageInvitationAssets + '/twitter.svg';
    facebook = marriageInvitationAssets + '/facebook.svg';
  
    // Dynamically setting background image style for the banner
    get bannerImageStyle() {
        let themeName =  marriageInvitationAssets + `/${this.theme}.jpeg`;
        return `background-image: url(${themeName});`;
    }

}
