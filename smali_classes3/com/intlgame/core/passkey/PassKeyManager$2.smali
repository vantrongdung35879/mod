.class Lcom/intlgame/core/passkey/PassKeyManager$2;
.super Ljava/lang/Object;
.source "PassKeyManager.java"

# interfaces
.implements Landroidx/credentials/CredentialManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/core/passkey/PassKeyManager;->createPassKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/credentials/CredentialManagerCallback<",
        "Landroidx/credentials/CreateCredentialResponse;",
        "Landroidx/credentials/exceptions/CreateCredentialException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/core/passkey/PassKeyManager;


# direct methods
.method constructor <init>(Lcom/intlgame/core/passkey/PassKeyManager;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/intlgame/core/passkey/PassKeyManager$2;->this$0:Lcom/intlgame/core/passkey/PassKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/credentials/exceptions/CreateCredentialException;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/intlgame/core/passkey/PassKeyManager$2;->this$0:Lcom/intlgame/core/passkey/PassKeyManager;

    invoke-virtual {v0, p1}, Lcom/intlgame/core/passkey/PassKeyManager;->handleCreateFailure(Landroidx/credentials/exceptions/CreateCredentialException;)V

    const/4 p1, 0x0

    .line 430
    sput p1, Lcom/intlgame/core/passkey/PassKeyManager;->eventID:I

    .line 431
    sput-boolean p1, Lcom/intlgame/core/passkey/PassKeyManager;->PassKeyManagerWorking:Z

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 417
    check-cast p1, Landroidx/credentials/exceptions/CreateCredentialException;

    invoke-virtual {p0, p1}, Lcom/intlgame/core/passkey/PassKeyManager$2;->onError(Landroidx/credentials/exceptions/CreateCredentialException;)V

    return-void
.end method

.method public onResult(Landroidx/credentials/CreateCredentialResponse;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/intlgame/core/passkey/PassKeyManager$2;->this$0:Lcom/intlgame/core/passkey/PassKeyManager;

    invoke-virtual {v0, p1}, Lcom/intlgame/core/passkey/PassKeyManager;->handleCreateSuccess(Landroidx/credentials/CreateCredentialResponse;)V

    const/4 p1, 0x0

    .line 422
    sput p1, Lcom/intlgame/core/passkey/PassKeyManager;->eventID:I

    .line 423
    sput-boolean p1, Lcom/intlgame/core/passkey/PassKeyManager;->PassKeyManagerWorking:Z

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 417
    check-cast p1, Landroidx/credentials/CreateCredentialResponse;

    invoke-virtual {p0, p1}, Lcom/intlgame/core/passkey/PassKeyManager$2;->onResult(Landroidx/credentials/CreateCredentialResponse;)V

    return-void
.end method
