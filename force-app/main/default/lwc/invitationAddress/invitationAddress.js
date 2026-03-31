import { LightningElement, wire} from 'lwc';
import getInvitationAddress from '@salesforce/apex/InvitationController.getInvitationAddress'

export default class InvitationAddress extends LightningElement {

    recordId = 'a0CJ500000Vl2XtMAJ'
    addressDetails = {}

    @wire(getInvitationAddress, {Id:'$recordId'})
    addressHandler({data, error}) {
        if(data) {
            console.log("addressHandler data", JSON.stringify(data))
            this.addressDetails = data
        }
        if(error) {
            console.error("addressHandler error", error)
        }
    }
}