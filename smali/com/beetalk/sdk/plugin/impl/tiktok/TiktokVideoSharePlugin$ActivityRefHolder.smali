.class Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;
.super Ljava/lang/Object;
.source "TiktokVideoSharePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityRefHolder"
.end annotation


# instance fields
.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokBroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivityRef(Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;->activityRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokBroadcastReceiver;)V
    .locals 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;->activityRef:Ljava/lang/ref/WeakReference;

    .line 232
    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;->receiver:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokBroadcastReceiver;

    .line 233
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    new-instance p2, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder$1;

    invoke-direct {p2, p0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder$1;-><init>(Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public unregisterReceiver(Landroid/app/Activity;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;->receiver:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 247
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;->receiver:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokBroadcastReceiver;

    :cond_0
    return-void
.end method
