.class public Lcom/tencent/tme/live/framework/common/TMEBaseActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/o2/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/framework/common/TMEBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/o2/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/framework/common/TMEBaseActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/framework/common/TMEBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/framework/common/TMEBaseActivity$a;->a:Lcom/tencent/tme/live/framework/common/TMEBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    const-string p2, "liveSdkExit"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/framework/common/TMEBaseActivity$a;->a:Lcom/tencent/tme/live/framework/common/TMEBaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
