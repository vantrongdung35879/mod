.class Lcom/garena/game/kgtw/SGameRealActivity$3;
.super Ljava/lang/Object;
.source "SGameRealActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/game/kgtw/SGameRealActivity;->ShowInstalledPackageNotIntect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/game/kgtw/SGameRealActivity;


# direct methods
.method constructor <init>(Lcom/garena/game/kgtw/SGameRealActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 420
    iput-object p1, p0, Lcom/garena/game/kgtw/SGameRealActivity$3;->this$0:Lcom/garena/game/kgtw/SGameRealActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 423
    invoke-static {}, Lcom/tencent/ngame/utility/SGameUtility;->ExitApp()V

    return-void
.end method
