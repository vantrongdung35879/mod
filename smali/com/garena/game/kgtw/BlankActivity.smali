.class public Lcom/garena/game/kgtw/BlankActivity;
.super Landroid/app/Activity;
.source "BlankActivity.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/garena/game/kgtw/BlankActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    iget-object p1, p0, Lcom/garena/game/kgtw/BlankActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/garena/game/kgtw/BlankActivity$1;

    invoke-direct {v0, p0}, Lcom/garena/game/kgtw/BlankActivity$1;-><init>(Lcom/garena/game/kgtw/BlankActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
