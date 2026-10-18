.class public Lcom/tencent/tme/live/o0/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/l2/c;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/aov/activities/TMELiveActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/aov/activities/TMELiveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/o0/a;->a:Lcom/tencent/tme/live/aov/activities/TMELiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/l2/b;)V
    .locals 2

    const-string v0, "fullScreenUseStatusForActivityOnCreate is called:"

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/o0/a;->a:Lcom/tencent/tme/live/aov/activities/TMELiveActivity;

    sget v1, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->i:I

    .line 1
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->a(Lcom/tencent/tme/live/l2/b;)V

    return-void
.end method
