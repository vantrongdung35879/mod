.class public final synthetic Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/garena/game/playfeaturedelivery/PFDManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/garena/game/playfeaturedelivery/PFDManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda5;->f$0:Lcom/garena/game/playfeaturedelivery/PFDManager;

    iput p2, p0, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda5;->f$0:Lcom/garena/game/playfeaturedelivery/PFDManager;

    iget v1, p0, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda5;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/garena/game/playfeaturedelivery/PFDManager;->lambda$cancelInstall$1$com-garena-game-playfeaturedelivery-PFDManager(ILjava/lang/Exception;)V

    return-void
.end method
