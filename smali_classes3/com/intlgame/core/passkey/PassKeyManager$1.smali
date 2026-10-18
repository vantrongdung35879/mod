.class Lcom/intlgame/core/passkey/PassKeyManager$1;
.super Ljava/lang/Object;
.source "PassKeyManager.java"

# interfaces
.implements Landroidx/credentials/CredentialManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/core/passkey/PassKeyManager;->loginPassKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/credentials/CredentialManagerCallback<",
        "Landroidx/credentials/GetCredentialResponse;",
        "Landroidx/credentials/exceptions/GetCredentialException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/core/passkey/PassKeyManager;


# direct methods
.method constructor <init>(Lcom/intlgame/core/passkey/PassKeyManager;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/intlgame/core/passkey/PassKeyManager$1;->this$0:Lcom/intlgame/core/passkey/PassKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/intlgame/core/passkey/PassKeyManager$1;->this$0:Lcom/intlgame/core/passkey/PassKeyManager;

    invoke-virtual {v0, p1}, Lcom/intlgame/core/passkey/PassKeyManager;->handleSignInFailure(Landroidx/credentials/exceptions/GetCredentialException;)V

    const/4 p1, 0x0

    .line 228
    sput p1, Lcom/intlgame/core/passkey/PassKeyManager;->eventID:I

    .line 229
    sput-boolean p1, Lcom/intlgame/core/passkey/PassKeyManager;->PassKeyManagerWorking:Z

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 215
    check-cast p1, Landroidx/credentials/exceptions/GetCredentialException;

    invoke-virtual {p0, p1}, Lcom/intlgame/core/passkey/PassKeyManager$1;->onError(Landroidx/credentials/exceptions/GetCredentialException;)V

    return-void
.end method

.method public onResult(Landroidx/credentials/GetCredentialResponse;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/intlgame/core/passkey/PassKeyManager$1;->this$0:Lcom/intlgame/core/passkey/PassKeyManager;

    invoke-virtual {v0, p1}, Lcom/intlgame/core/passkey/PassKeyManager;->handleSignInSuccess(Landroidx/credentials/GetCredentialResponse;)V

    const/4 p1, 0x0

    .line 220
    sput p1, Lcom/intlgame/core/passkey/PassKeyManager;->eventID:I

    .line 221
    sput-boolean p1, Lcom/intlgame/core/passkey/PassKeyManager;->PassKeyManagerWorking:Z

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 215
    check-cast p1, Landroidx/credentials/GetCredentialResponse;

    invoke-virtual {p0, p1}, Lcom/intlgame/core/passkey/PassKeyManager$1;->onResult(Landroidx/credentials/GetCredentialResponse;)V

    return-void
.end method
