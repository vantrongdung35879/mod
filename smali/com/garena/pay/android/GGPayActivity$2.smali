.class Lcom/garena/pay/android/GGPayActivity$2;
.super Landroidx/activity/OnBackPressedCallback;
.source "GGPayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGPayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/GGPayActivity;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGPayActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/garena/pay/android/GGPayActivity$2;->this$0:Lcom/garena/pay/android/GGPayActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/garena/pay/android/GGPayActivity$2;->this$0:Lcom/garena/pay/android/GGPayActivity;

    invoke-static {v0}, Lcom/garena/pay/android/GGPayActivity;->-$$Nest$fgetclient(Lcom/garena/pay/android/GGPayActivity;)Lcom/garena/pay/android/GGPayClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/pay/android/GGPayClient;->onBackPressed()V

    return-void
.end method
